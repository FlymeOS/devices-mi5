.class public Lcom/miui/internal/hybrid/XmlConfigParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/hybrid/ConfigParser;


# static fields
.field private static final eu:Ljava/lang/String; = "timestamp"

.field private static final ev:Ljava/lang/String; = "vendor"

.field private static final fB:Ljava/lang/String; = "com.miui.sdk.hybrid.config"

.field private static final fC:Ljava/lang/String; = "miui_hybrid_config"

.field private static final fD:Ljava/lang/String; = "widget"

.field private static final fE:Ljava/lang/String; = "content"

.field private static final fF:Ljava/lang/String; = "feature"

.field private static final fG:Ljava/lang/String; = "param"

.field private static final fH:Ljava/lang/String; = "preference"

.field private static final fI:Ljava/lang/String; = "access"

.field private static final fJ:Ljava/lang/String; = "src"

.field private static final fK:Ljava/lang/String; = "origin"

.field private static final fL:Ljava/lang/String; = "subdomains"

.field private static final fM:Ljava/lang/String; = "name"

.field private static final fN:Ljava/lang/String; = "value"

.field private static final fi:Ljava/lang/String; = "signature"


# instance fields
.field private fO:Landroid/content/res/XmlResourceParser;


# direct methods
.method private constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->fO:Landroid/content/res/XmlResourceParser;

    .line 55
    return-void
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/hybrid/Config;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .prologue
    .line 204
    return-object p1
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 120
    .line 121
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 123
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 124
    :cond_1
    if-eq v1, v3, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 128
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->b(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 131
    :cond_2
    const-string v2, "feature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->c(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 133
    :cond_3
    const-string v2, "preference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->d(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 135
    :cond_4
    const-string v2, "access"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->e(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 139
    :cond_5
    return-void
.end method

.method private a(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 167
    const-string v0, "name"

    invoke-interface {p2, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "value"

    invoke-interface {p2, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private b(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    const-string v1, "src"

    invoke-interface {p2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private c(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 147
    new-instance v0, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    .line 148
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p2, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    .line 150
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 152
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 153
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 157
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, "param"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/hybrid/XmlConfigParser;->a(Lcom/miui/internal/hybrid/Feature;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    .line 163
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 62
    if-eqz v1, :cond_0

    .line 63
    const-string v0, "com.miui.sdk.hybrid.config"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "miui_hybrid_config"

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :cond_1
    invoke-static {p0, v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .prologue
    .line 75
    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static createFromXmlParser(Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/hybrid/XmlConfigParser;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/miui/internal/hybrid/XmlConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/XmlConfigParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private d(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v0, "name"

    invoke-interface {p2, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "value"

    invoke-interface {p2, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "signature"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->e(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v2, "timestamp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->e(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    goto :goto_0

    .line 179
    :cond_1
    const-string v2, "vendor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-virtual {p1, v1}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/hybrid/Config;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/miui/internal/hybrid/Config;)Lcom/miui/internal/hybrid/Security;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/miui/internal/hybrid/Security;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Security;-><init>()V

    .line 190
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    .line 192
    :cond_0
    return-object v0
.end method

.method private e(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    .line 197
    const-string v1, "origin"

    invoke-interface {p2, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    .line 198
    const-string v1, "subdomains"

    invoke-interface {p2, v3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    .line 199
    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Permission;->setForbidden(Z)V

    .line 200
    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    .line 201
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 93
    :cond_0
    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->fO:Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_4

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->fO:Landroid/content/res/XmlResourceParser;

    .line 99
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 103
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v3, "widget"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/XmlConfigParser;->a(Lcom/miui/internal/hybrid/Config;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->fO:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 115
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_1
    new-instance v1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/XmlConfigParser;->fO:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    :try_start_2
    new-instance v1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
