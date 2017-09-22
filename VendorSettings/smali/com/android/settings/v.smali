.class Lcom/android/settings/v;
.super Landroid/os/HandlerThread;
.source "ApkIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private aa:Landroid/os/Handler;

.field final synthetic ab:Lcom/android/settings/q;


# direct methods
.method public constructor <init>(Lcom/android/settings/q;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings/v;->ab:Lcom/android/settings/q;

    .line 319
    const-string v0, "FileIconLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 360
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 361
    const-wide/32 v2, 0x36ee80

    invoke-static {p1, v1, v0, v2, v3}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 365
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 337
    iget-object v0, p0, Lcom/android/settings/v;->ab:Lcom/android/settings/q;

    invoke-static {v0}, Lcom/android/settings/q;->a(Lcom/android/settings/q;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 338
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/t;

    .line 340
    invoke-static {}, Lcom/android/settings/q;->x()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/t;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/u;

    .line 341
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/settings/u;->state:I

    if-nez v3, :cond_0

    .line 343
    iput v5, v1, Lcom/android/settings/u;->state:I

    .line 345
    iget-object v3, p0, Lcom/android/settings/v;->ab:Lcom/android/settings/q;

    invoke-static {v3}, Lcom/android/settings/q;->b(Lcom/android/settings/q;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/t;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/v;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 346
    invoke-virtual {v1, v3}, Lcom/android/settings/u;->a(Ljava/lang/Object;)V

    .line 348
    iput v6, v1, Lcom/android/settings/u;->state:I

    .line 349
    invoke-static {}, Lcom/android/settings/q;->x()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v0, v0, Lcom/android/settings/t;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/settings/v;->ab:Lcom/android/settings/q;

    invoke-static {v0}, Lcom/android/settings/q;->c(Lcom/android/settings/q;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    return v5
.end method

.method public v()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/v;->aa:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/v;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/v;->aa:Landroid/os/Handler;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/settings/v;->aa:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    return-void
.end method
