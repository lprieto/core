package org.jboss.weld.environment.servlet.test.deployment.structure;

import static org.jboss.weld.environment.servlet.test.util.Deployments.baseDeployment;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.inject.spi.AnnotatedType;
import javax.enterprise.inject.spi.BeanManager;
import javax.enterprise.inject.spi.Extension;

import org.jboss.shrinkwrap.api.ArchivePaths;
import org.jboss.shrinkwrap.api.asset.Asset;
import org.jboss.shrinkwrap.api.asset.ByteArrayAsset;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.jboss.shrinkwrap.impl.BeansXml;
import org.junit.Test;

public class DeploymentOrderingTestBase {

    public static final Asset EXTENSION = new ByteArrayAsset(ContainerLifecycleObserver.class.getName().getBytes());

    public static WebArchive deployment() {
        WebArchive war = baseDeployment();
        war.delete(ArchivePaths.create("WEB-INF/beans.xml"));
        return war.addPackage(DeploymentOrderingTestBase.class.getPackage())
                .addAsWebInfResource(new BeansXml().alternatives(Bar.class), "beans.xml")
                .addAsWebInfResource(new BeansXml().alternatives(Garply.class), "classes/META-INF/beans.xml")
                .addAsWebInfResource(EXTENSION, "classes/META-INF/services/" + Extension.class.getName());
    }

    @Test
    public void testBeansXmlMerged(BeanManager beanManager) {
        assertEquals(Bar.class, beanManager.resolve(beanManager.getBeans(Foo.class)).getBeanClass());
        assertEquals(Garply.class, beanManager.resolve(beanManager.getBeans(Baz.class)).getBeanClass());
    }

    @Test
    public void testProcessAnnotatedTypeCalledOnceOnlyPerType(ContainerLifecycleObserver containerLifecycleObserver) {
        assertEquals(containerLifecycleObserver.getProcessedAnnotatedTypes().toString(), 4, containerLifecycleObserver.getProcessedAnnotatedTypes().size());
        List<Class<?>> classes = new ArrayList<Class<?>>();
        for (AnnotatedType<?> annotatedType : containerLifecycleObserver.getProcessedAnnotatedTypes()) {
            classes.add(annotatedType.getJavaClass());
        }
        assertTrue(classes.contains(Foo.class));
        assertTrue(classes.contains(Bar.class));
        assertTrue(classes.contains(Baz.class));
        assertTrue(classes.contains(Garply.class));
    }

}
