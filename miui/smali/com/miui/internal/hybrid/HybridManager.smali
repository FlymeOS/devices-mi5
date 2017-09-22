.class public Lcom/miui/internal/hybrid/HybridManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/HybridManager$b;,
        Lcom/miui/internal/hybrid/HybridManager$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "hybrid"

.field private static eH:Ljava/util/concurrent/ExecutorService;

.field private static eI:Ljava/lang/String;


# instance fields
.field private eJ:Lmiui/hybrid/HybridView;

.field private eK:Z

.field private eL:Lmiui/hybrid/NativeInterface;

.field private eM:Lcom/miui/internal/hybrid/FeatureManager;

.field private eN:Lcom/miui/internal/hybrid/PermissionManager;

.field private eO:Lmiui/hybrid/PageContext;

.field private eP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/hybrid/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/HybridManager;->eH:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    .line 61
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    .line 63
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lmiui/hybrid/HybridSettings;)V

    .line 121
    new-instance v0, Lmiui/hybrid/HybridViewClient;

    invoke-direct {v0}, Lmiui/hybrid/HybridViewClient;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V

    .line 124
    new-instance v0, Lmiui/hybrid/HybridChromeClient;

    invoke-direct {v0}, Lmiui/hybrid/HybridChromeClient;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V

    .line 127
    new-instance v0, Lcom/miui/internal/hybrid/JsInterface;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 128
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    const-string v2, "MiuiJsBridge"

    invoke-virtual {v1, v0, v2}, Lmiui/hybrid/HybridView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/hybrid/HybridManager$1;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 142
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 168
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    if-eqz p2, :cond_1

    .line 94
    new-instance v0, Lcom/miui/internal/hybrid/SecurityManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/hybrid/SecurityManager;-><init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/SecurityManager;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/SecurityManager;->isValidSignature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :cond_1
    new-instance v0, Lcom/miui/internal/hybrid/FeatureManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/hybrid/FeatureManager;-><init>(Lcom/miui/internal/hybrid/Config;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eM:Lcom/miui/internal/hybrid/FeatureManager;

    .line 100
    new-instance v0, Lcom/miui/internal/hybrid/PermissionManager;

    invoke-direct {v0, p1}, Lcom/miui/internal/hybrid/PermissionManager;-><init>(Lcom/miui/internal/hybrid/Config;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eN:Lcom/miui/internal/hybrid/PermissionManager;

    .line 101
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/HybridManager;->a(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, ""

    .line 286
    :goto_0
    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method private a(Lmiui/hybrid/HybridSettings;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    .line 147
    invoke-virtual {p1}, Lmiui/hybrid/HybridSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridManager;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/miui/internal/hybrid/HybridManager;->eK:Z

    return p1
.end method

.method private f(I)Lcom/miui/internal/hybrid/Config;
    .locals 4

    .prologue
    .line 80
    .line 81
    if-nez p1, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v0

    .line 86
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/XmlConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/miui/internal/hybrid/HybridManager;->eI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v1, " XiaoMi/HybridView/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    const-string v2, "com.miui.core"

    invoke-static {v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/HybridManager;->eI:Ljava/lang/String;

    .line 161
    :cond_0
    sget-object v0, Lcom/miui/internal/hybrid/HybridManager;->eI:Ljava/lang/String;

    return-object v0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const-string v0, "^[a-z-]+://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-object p1

    .line 181
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/hybrid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 250
    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    invoke-virtual {p2, v0}, Lmiui/hybrid/PageContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eK:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    const-string v0, "hybrid"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "hybrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-blocking response is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager$b;

    invoke-direct {v1, p0, p1, p3}, Lcom/miui/internal/hybrid/HybridManager$b;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    :cond_1
    return-void
.end method

.method public config(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/hybrid/ConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHybridView()Lmiui/hybrid/HybridView;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method public init(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lmiui/hybrid/NativeInterface;

    invoke-direct {v0, p0}, Lmiui/hybrid/NativeInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eL:Lmiui/hybrid/NativeInterface;

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->f(I)Lcom/miui/internal/hybrid/Config;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/miui/internal/hybrid/HybridManager;->E()V

    .line 70
    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    invoke-virtual {v0, p2}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eN:Lcom/miui/internal/hybrid/PermissionManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    invoke-virtual {v1}, Lmiui/hybrid/PageContext;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/PermissionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcb

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v0, Lmiui/hybrid/Request;

    invoke-direct {v0}, Lmiui/hybrid/Request;-><init>()V

    .line 194
    invoke-virtual {v0, p2}, Lmiui/hybrid/Request;->setAction(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p3}, Lmiui/hybrid/Request;->setRawParams(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    invoke-virtual {v0, v1}, Lmiui/hybrid/Request;->setPageContext(Lmiui/hybrid/PageContext;)V

    .line 197
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eJ:Lmiui/hybrid/HybridView;

    invoke-virtual {v0, v1}, Lmiui/hybrid/Request;->setView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eL:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, v1}, Lmiui/hybrid/Request;->setNativeInterface(Lmiui/hybrid/NativeInterface;)V

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eM:Lcom/miui/internal/hybrid/FeatureManager;

    invoke-virtual {v1, p1}, Lcom/miui/internal/hybrid/FeatureManager;->lookupFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    invoke-interface {v1, v0}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v2

    .line 210
    sget-object v3, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, v3, :cond_1

    .line 211
    new-instance v2, Lmiui/hybrid/Response;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmiui/hybrid/Response;-><init>(I)V

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, v2, v3, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 212
    invoke-interface {v1, v0}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, v0, v1, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_1
    sget-object v3, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, v3, :cond_2

    .line 214
    sget-object v2, Lcom/miui/internal/hybrid/HybridManager;->eH:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/miui/internal/hybrid/HybridManager$a;

    invoke-direct {v3, p0, v1, v0, p4}, Lcom/miui/internal/hybrid/HybridManager$a;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Lmiui/hybrid/Request;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 215
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_2
    new-instance v2, Lmiui/hybrid/Callback;

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    invoke-direct {v2, p0, v3, p4}, Lmiui/hybrid/Callback;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v2}, Lmiui/hybrid/Request;->setCallback(Lmiui/hybrid/Callback;)V

    .line 219
    sget-object v2, Lcom/miui/internal/hybrid/HybridManager;->eH:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/miui/internal/hybrid/HybridManager$a;

    invoke-direct {v3, p0, v1, v0, p4}, Lcom/miui/internal/hybrid/HybridManager$a;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Lmiui/hybrid/Request;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 220
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public isDetached()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eK:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 339
    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/LifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 333
    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onDestroy()V

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method public onPageChange()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 303
    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onPageChange()V

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 321
    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onPause()V

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 315
    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onResume()V

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 309
    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onStart()V

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    .line 327
    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onStop()V

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method public removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public setPageContext(Lmiui/hybrid/PageContext;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->eO:Lmiui/hybrid/PageContext;

    .line 115
    return-void
.end method
