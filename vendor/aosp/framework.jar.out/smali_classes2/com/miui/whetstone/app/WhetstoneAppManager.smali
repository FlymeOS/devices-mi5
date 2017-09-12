.class public Lcom/miui/whetstone/app/WhetstoneAppManager;
.super Ljava/lang/Object;
.source "WhetstoneAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhetstoneAppManager"

.field private static final UNINIT:I = -0x2

.field private static _sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;


# instance fields
.field private mApplicationThread:Landroid/os/IBinder;

.field public mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

.field private mContex:Landroid/content/Context;

.field public mEnable:Z

.field public mHasInit:Z

.field public mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 46
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/app/WhetstoneAppManager;->attach(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public static addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p0, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 145
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmapForDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 153
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 155
    :cond_0
    return-void
.end method

.method private checkInit()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 50
    iget-boolean v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    .line 52
    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    .line 53
    .local v0, "level":I
    if-eq v0, v3, :cond_0

    .line 54
    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mEnable:Z

    .line 55
    iput-boolean v2, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 58
    .end local v0    # "level":I
    :cond_0
    return-void

    .line 54
    .restart local v0    # "level":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 131
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLeakCanaryWorksProperty()Z
    .locals 2

    .prologue
    .line 115
    const-string v0, "persist.sys.mem_leak_debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sys.boot_completed"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "init.svc.bootanim"

    const-string v1, "running"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleTrimMemory(I)Z
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "finish":Z
    packed-switch p0, :pswitch_data_0

    .line 197
    :goto_0
    return v0

    .line 183
    :pswitch_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v1, v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v1, v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v1, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->onTrimMemory(I)V

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/whetstone/utils/UtilsNative;->trimApplicationDalvik(I)V

    .line 190
    const/4 v0, 0x1

    .line 191
    goto :goto_0

    .line 193
    :pswitch_2
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->clearOpenGLCache()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 172
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-boolean v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-boolean v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mEnable:Z

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLeakCanaryWorks()Z
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->getLeakCanaryWorksProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTestKeyBuild()Z
    .locals 2

    .prologue
    .line 106
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->restoreDirectBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_0
    return-void
.end method

.method public static setHardwareRendererIfNeeded()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->isOPENGLDisableNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method public static trimHeapSizeIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 208
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->trimDalvikHeapSize()V

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;

    iget-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    .line 72
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 7
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 80
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isLeakCanaryWorks()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isTestKeyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "WhetstoneAppManager"

    const-string v3, "WhetstoneAppManager m onCreate mem leak check install"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :try_start_0
    const-string v2, "com.miui.squareup.leakcanary.LeakCanary"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "install"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Application;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 87
    .local v1, "install":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 103
    .end local v1    # "install":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "WhetstoneAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvocationTargetException e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WhetstoneAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "WhetstoneAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WhetstoneAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isTestKeyBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "WhetstoneAppManager"

    const-string v3, "WhetstoneAppManager m onCreate mem leak check not install"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 138
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->onRestoreAll(Landroid/app/Activity;)V

    .line 141
    :cond_0
    return-void
.end method
