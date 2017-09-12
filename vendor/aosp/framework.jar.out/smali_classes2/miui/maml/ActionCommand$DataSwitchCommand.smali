.class Lmiui/maml/ActionCommand$DataSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string v0, "data_state"

    sget-object v1, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 595
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 596
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 606
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 607
    .local v0, "enable":Z
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_2

    .line 608
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 612
    :goto_0
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_0

    .line 613
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v2, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 615
    :cond_0
    return-void

    .line 608
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    :cond_2
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 601
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$DataSwitchCommand;->updateState(I)V

    .line 602
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
