.class public Lcom/android/settings/msim/StatusImei;
.super Lmiui/app/Activity;
.source "StatusImei.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;III)Landroid/app/ActionBar$Tab;
    .locals 7

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusImei;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0, p2}, Lcom/android/settings/msim/StatusImei;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 44
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-static {v5, p4}, Lmiui/telephony/SubscriptionManager;->putSlotId(Landroid/os/Bundle;I)V

    .line 46
    const/4 v6, 0x1

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 48
    return-object v2
.end method

.method private kd()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusImei;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusImei;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 30
    const-class v1, Lcom/android/settings/msim/ImeiFragment;

    .line 32
    const v2, 0x7f0c1048

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/settings/msim/StatusImei;->a(Ljava/lang/Class;III)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 33
    const v3, 0x7f0c1049

    invoke-direct {p0, v1, v3, v4, v4}, Lcom/android/settings/msim/StatusImei;->a(Ljava/lang/Class;III)Landroid/app/ActionBar$Tab;

    .line 34
    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/msim/StatusImei;->kd()V

    .line 24
    return-void
.end method
