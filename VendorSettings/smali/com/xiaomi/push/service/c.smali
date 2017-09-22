.class public Lcom/xiaomi/push/service/c;
.super Ljava/lang/Object;
.source "CommonPacketExtensionProvider.java"

# interfaces
.implements Lcom/xiaomi/smack/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 31
    if-eq v0, v8, :cond_0

    .line 68
    :goto_0
    return-object v6

    .line 41
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 48
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 50
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/smack/d/g;->unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    if-ne v0, v8, :cond_3

    .line 59
    if-nez v6, :cond_2

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/push/service/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_3
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    .line 56
    const/4 v7, 0x4

    if-ne v0, v7, :cond_1

    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 68
    :cond_4
    new-instance v0, Lcom/xiaomi/smack/packet/a;

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v6, v0

    goto :goto_0

    :cond_5
    move-object v5, v6

    goto :goto_2

    :cond_6
    move-object v5, v6

    move-object v4, v6

    move-object v3, v6

    goto :goto_2
.end method


# virtual methods
.method public b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 79
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 83
    :cond_0
    if-ne v0, v2, :cond_1

    .line 84
    invoke-static {p1}, Lcom/xiaomi/push/service/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 86
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public register()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/xiaomi/smack/c/c;->Kf()Lcom/xiaomi/smack/c/c;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "xm:chat"

    invoke-virtual {v0, v1, v2, p0}, Lcom/xiaomi/smack/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    return-void
.end method
