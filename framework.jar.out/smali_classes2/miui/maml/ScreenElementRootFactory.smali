.class public Lmiui/maml/ScreenElementRootFactory;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRootFactory$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;
    .locals 9
    .param p0, "param"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    .line 29
    # getter for: Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$000(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;

    move-result-object v6

    .line 30
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_0

    .line 31
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 33
    :cond_0
    # getter for: Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$100(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    .line 34
    .local v1, "loader":Lmiui/maml/ResourceLoader;
    # getter for: Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$200(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;

    move-result-object v8

    .line 35
    .local v8, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v8, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v2, v8}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    .line 38
    :cond_1
    if-nez v1, :cond_2

    .line 39
    const/4 v2, 0x0

    .line 44
    :goto_0
    return-object v2

    .line 41
    :cond_2
    new-instance v0, Lmiui/maml/LifecycleResourceManager;

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x57e40

    invoke-direct/range {v0 .. v5}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    .line 43
    .local v0, "rm":Lmiui/maml/LifecycleResourceManager;
    new-instance v7, Lmiui/maml/ScreenContext;

    invoke-direct {v7, v6, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    .line 44
    .local v7, "mElementContext":Lmiui/maml/ScreenContext;
    new-instance v2, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, v7}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    goto :goto_0
.end method
