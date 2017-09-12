.class public Lmiui/maml/NotifierManager$ContentChangeNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentChangeNotifier"
.end annotation


# instance fields
.field protected final mObserver:Landroid/database/ContentObserver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 391
    new-instance v0, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/NotifierManager$ContentChangeNotifier$1;-><init>(Lmiui/maml/NotifierManager$ContentChangeNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 405
    iput-object p2, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    .line 406
    return-void
.end method


# virtual methods
.method protected onRegister()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v4, v0}, Lmiui/maml/NotifierManager$ContentChangeNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 412
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 417
    return-void
.end method
