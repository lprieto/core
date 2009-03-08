��    '      T  5   �      `  �  a       �   �  �   $  5  �  x   �    a  `   s	     �	  �   �	  8   �
     �
     �
          /     J     g  �   �  �     9      s   :  S  �  {    �   ~     ,  G  2  f  z  �   �     �  �   �  C   "  G   f  b   �  �        �  E   �  K        i  6  �  �  �     i  �   �  �     5    x   C    �  `   �     /   �   N   F   E!      �!  $   �!  "   �!      �!  1   "  2  H"  �   {#  (  $  :   <%  �   w%  �  �%  �  �'  �   ^)     ;*  p  A*  �  �+  �   ?-     .  �   2.  R   �.  V   */  b   �/  �   �/  *   �0  U   �0  O   1  *   `1                %      $                "                             &                    #                          	                     
             '      !                        <![CDATA[<WebBeans xmlns="urn:java:javax.webbeans"
          xmlns:myapp="urn:java:com.mydomain.myapp"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="urn:java:javax.webbeans http://java.sun.com/jee/web-beans-1.0.xsd
                              urn:java:com.mydomain.myapp http://mydomain.com/xsd/myapp-1.2.xsd">

    <myapp:System>
        ...
    </myapp:System>

</WebBeans>]]> <![CDATA[<WebBeans xmlns="urn:java:javax.webbeans"
          xmlns:util="urn:java:java.util">

    <util:Date/>

</WebBeans>]]> <![CDATA[<myapp:AsynchronousChequePaymentProcessor>
    <myapp:PayByCheque/>
    <myapp:Asynchronous/>
</myapp:AsynchronousChequePaymentProcessor>]]> <![CDATA[<myapp:ShoppingCart>
    <SessionScoped/>
    <myfwk:Transactional requiresNew="true"/>
    <myfwk:Secure/>
</myapp:ShoppingCart>]]> <![CDATA[<myapp:System>
    <ApplicationScoped/>
    <myapp:admin>
        <myapp:Name>
            <myapp:firstname>Gavin</myapp:firstname>
            <myapp:lastname>King</myapp:lastname>
            <myapp:email>gavin@hibernate.org</myapp:email>
        </myapp:Name>
    </myapp:admin>
</myapp:System>]]> <![CDATA[<myfwk:TransactionInterceptor>
    <Interceptor/>
    <myfwk:Transactional/>
</myfwk:TransactionInterceptor>]]> <![CDATA[<util:Date>
    <Named>currentTime</Named>
</util:Date>

<util:Date>
    <SessionScoped/>
    <myapp:Login/>
    <Named>loginTime</Named>
</util:Date>

<util:Date>
    <ApplicationScoped/>
    <myapp:SystemStart/>
    <Named>systemStartTime</Named>
</util:Date>]]> <![CDATA[@Current Date currentTime;
@Login Date loginTime;
@SystemStart Date systemStartTime;]]> <![CDATA[@Current Date date]]> And this is all the code we need to declare that <literal>Date</literal> is a simple Web Bean! An instance of <literal>Date</literal> may now be injected by any other Web Bean: As usual, a Web Bean may support multiple binding types: Declaring Web Bean classes Declaring Web Bean members Declaring Web Bean metadata Declaring inline Web Beans Defining Web Beans using XML For each Java package, Web Beans defines a corresponding XML namespace. The namespace is formed by prepending <literal>urn:java:</literal> to the Java package name. For the package <literal>com.mydomain.myapp</literal>, the XML namespace is <literal>urn:java:com.mydomain.myapp</literal>. For example, the element <literal>&lt;util:Date/&gt;</literal> in the following XML fragment refers to the class <literal>java.util.Date</literal>: If we want our XML document format to be authored by people who aren't Java developers, or who don't have access to our code, we need to provide a schema. There's nothing specific to Web Beans about writing or using the schema. In either of these cases, Web Beans gives us two options: Interceptors and decorators are just simple Web Beans, so they may be declared just like any other simple Web Bean: Java types belonging to a package are referred to using an XML element in the namespace corresponding to the package. The name of the element is the name of the Java type. Fields and methods of the type are specified by child elements in the same namespace. If the type is an annotation, members are specified by attributes of the element. Many frameworks use XML to provide metadata relating to Java classes. However, Web Beans uses a very different approach to specifying the names of Java classes, fields or methods to most other frameworks. Instead of writing class and member names as the string values of XML elements and attributes, Web Beans lets you use the class or member name as the name of the XML element. So far, we've seen plenty of examples of Web Beans declared using annotations. However, there are a couple of occasions when we can't use annotations to define the Web Bean: TODO! The <literal>&lt;Name&gt;</literal> element declares a simple Web Bean of scope <literal>@Dependent</literal> and class <literal>Name</literal>, with a set of initial field values. This Web Bean has a special, container-generated binding and is therefore injectable only to the specific injection point at which it is declared. The advantage of this approach is that you can write an XML schema that prevents spelling errors in your XML document. It's even possible for a tool to generate the XML schema automatically from the compiled Java code. Or, an integrated development environment could perform the same validation without the need for the explicit intermediate generation step. This simple but powerful feature allows the Web Beans XML format to be used to specify whole graphs of Java objects. It's not quite a full databinding solution, but it's close! Using a schema We can declare the scope, deployment type and interceptor binding types using direct child elements of the Web Bean declaration: We use exactly the same approach to specify names and binding type: Web Beans lets us define a Web Bean at an injection point. For example: Where <literal>@Login</literal> and <literal>@SystemStart</literal> are binding annotations types. Writing an XML schema is quite tedious. Therefore, the Web Beans RI project will provide a tool which automatically generates the XML schema from compiled Java code. declare the Web Bean using XML. when the implementation class comes from some preexisting library, or when there should be multiple Web Beans with the same implementation class. write a producer method, or Project-Id-Version: xml
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2009-01-10 14:18+0000
PO-Revision-Date: 2009-03-06 17:56+1100
Last-Translator: 
Language-Team:  <en@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
 <![CDATA[<WebBeans xmlns="urn:java:javax.webbeans"
          xmlns:myapp="urn:java:com.mydomain.myapp"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="urn:java:javax.webbeans http://java.sun.com/jee/web-beans-1.0.xsd
                              urn:java:com.mydomain.myapp http://mydomain.com/xsd/myapp-1.2.xsd">

    <myapp:System>
        ...
    </myapp:System>

</WebBeans>]]> <![CDATA[<WebBeans xmlns="urn:java:javax.webbeans"
          xmlns:util="urn:java:java.util">

    <util:Date/>

</WebBeans>]]> <![CDATA[<myapp:AsynchronousChequePaymentProcessor>
    <myapp:PayByCheque/>
    <myapp:Asynchronous/>
</myapp:AsynchronousChequePaymentProcessor>]]> <![CDATA[<myapp:ShoppingCart>
    <SessionScoped/>
    <myfwk:Transactional requiresNew="true"/>
    <myfwk:Secure/>
</myapp:ShoppingCart>]]> <![CDATA[<myapp:System>
    <ApplicationScoped/>
    <myapp:admin>
        <myapp:Name>
            <myapp:firstname>Gavin</myapp:firstname>
            <myapp:lastname>King</myapp:lastname>
            <myapp:email>gavin@hibernate.org</myapp:email>
        </myapp:Name>
    </myapp:admin>
</myapp:System>]]> <![CDATA[<myfwk:TransactionInterceptor>
    <Interceptor/>
    <myfwk:Transactional/>
</myfwk:TransactionInterceptor>]]> <![CDATA[<util:Date>
    <Named>currentTime</Named>
</util:Date>

<util:Date>
    <SessionScoped/>
    <myapp:Login/>
    <Named>loginTime</Named>
</util:Date>

<util:Date>
    <ApplicationScoped/>
    <myapp:SystemStart/>
    <Named>systemStartTime</Named>
</util:Date>]]> <![CDATA[@Current Date currentTime;
@Login Date loginTime;
@SystemStart Date systemStartTime;]]> <![CDATA[@Current Date date]]> Und das ist alles an Code was wir benötigen, um zu deklarieren dass es sich bei <literal>Date</literal> um ein einfaches Web Bean handelt! Eine Instanz von <literal>Date</literal> kann jetzt in ein beliebiges anderes Web Bean eingespeist werden: Wie gewöhnlich kann ein Web Bean mehrere Binding-Typen unterstützen: Deklaration von Web Bean Klassen Deklaration von Web Bean Mitgliedern Deklaration von Web Bean Metadaten Deklaration von inline Web Beans Definition von Web Beans unter Verwendung von XML Für jedes Java-Paket definieren Web Beans einen entsprechenden XML-Namespace. Der Namespace wird durch Voranstellen von <literal>urn:java:</literal> vor den Java-Paketnamen gebildet. Für das Paket <literal>com.mydomain.myapp</literal> ist der XML-Namespace <literal>urn:java:com.mydomain.myapp</literal>. Zum Beispiel bezieht sich das Element <literal>&lt;util:Date/&gt;</literal> im folgenden XML-Fragment auf die Klasse <literal>java.util.Date</literal>: Wenn Personen, die keine Java-Entwickler sind, Autoren unseres XML-Dokumentformats sein sollen oder diese keinen Zugriff auf unseren Code haben, so müssen wir ein Schema bereitstellen. Es gibt nichts, was hinsichtlich des Schreibens oder der Verwendung des Schemas spezifisch für Web Beans ist. In jedem dieser Fälle bieten uns Web Beans zwei Optionen: Interzeptoren und Dekoratoren sind nur einfache Web Beans und können daher wie jedes andere einfache Web Bean deklariert werden: Auf Java-Typen, die zu einem Paket gehören, wird verwiesen, indem ein XML-Element in dem dem Paket entsprechenden Namespace verwendet wird. Derr Name des Elements ist der Name des Java-Typs. Felder und Methoden des Typs werden durch untergeordnete Elemente in demselben Namespace festgelegt. Handelt es sich bei dem Typ um eine Annotation, so werden Mitglieder durch Attribute des Elements festgelegt. Viele Frameworks verwenden XML zur Bereitstellung von Metadaten, die sich auf Java-Klassen beziehen. Web Beans jedoch verwenden eine sehr unterschiedliche Herangehensweise bei der Festlegung von Namen von Java-Klassen, Feldern oder Methoden als andere Frameworks. Statt dem Schreiben von Klassen- und Mitglieder-Namen als String-Werte von XML-Elementen und Attributen, gestatten Web Beans die Verwendung des Klassen- und Mitglieder-Namens als Name des XML-Elements. Bis jetzt haben wir viele Beispiele von unter Verwendung von Annotationen deklarierten Web Beans gesehen. Es gibt jedoch ein paar Fälle, in denen keine Annotationen zur Definition des Web Beans verwendet werden können: TODO! Das <literal>&lt;Name&gt;</literal>-Element deklariert ein einfaches Web Bean von Geltungsbereich <literal>@Dependent</literal> und Klasse <literal>Name</literal> mit einem Satz anfänglicher Feldwerte. Dieses Web Bean besitzt ein spezielles, Container-generiertes Binding und ist daher nur an dem spezifischen Einspeisungspunkt einspeisbar, an dem es deklariert wird. Der Vorteil bei dieser Vorgehensweise ist, dass Sie ein XML-Schema schreiben können, dass Rechtschreibfehler in Ihrem XML-Dokument verhindert. Es ist sogar möglich, dass ein Tool das XML-Schema automatisch aus dem kompilierten Java-Code generiert. Oder eine integrierte Entwicklungsumgebung könnte dieselbe Validierung durchführen, ohne dass der explizite Generierungsschritt notwendig wäre. Dieses einfache aber leistungsfähige Feature gestattet die Verwendung des Web Beans XML-Formats zur Festlegung ganzer Diagramme von Java-Objekten. Es ist noch keine volndige datenbindende Lösung, aber ganz nah dran! Verwendung eines Schemas Wir können Geltungsbereich, Deployment-Typ und Interzeptor Binding-Typen deklarieren, indem wir direkte untergeordnete Elemente der Web Bean Dellaration verwenden: Wir verwenden exakt dieselbe Vorgehensweise, um Namen und Binding-Typ festzulegen: Web Beans lassen uns ein Web Bean an einem Einspeisungspunkt definieren. Zum Beispiel: Wobei <literal>@Login</literal> und <literal>@SystemStart</literal> Binding Annotationstypen sind. Das Schreiben eines XML-Schemas ist recht mühselig. Daher liefert das Web Beans RI Projekt ein Tool, das automatisch das XML-Schema aus kompiliertem Java-Code generiert. das Deklarieren des Web Beans mittels XML. Wenn die Implementierungsklasse von einer bereits bestehenden Bibliothek stammt oder  wenn mehrere Web Beans mit derselben Implementierungsklasse existieren sollten. das Schreiben einer Producer-Methode oder  