.class public Lmiui/maml/NotifierManager$MobileDataNotifier;
.super Lmiui/maml/NotifierManager$ContentChangeNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataNotifier"
.end annotation


# instance fields
.field private mMobileDataUtils:Landroid/app/MobileDataUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/NotifierManager$ContentChangeNotifier;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 380
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 381
    return-void
.end method


# virtual methods
.method protected onRegister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/NotifierManager$MobileDataNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 386
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v0}, Lmiui/maml/NotifierManager$MobileDataNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 387
    return-void
.end method
