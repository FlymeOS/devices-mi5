.class public Lcom/android/settings/msim/StatusSim;
.super Lmiui/app/Activity;
.source "StatusSim.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;III)Landroid/app/ActionBar$Tab;
    .locals 7

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusSim;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 47
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/settings/msim/StatusSim;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 50
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v5, p4}, Lmiui/telephony/SubscriptionManager;->putSlotId(Landroid/os/Bundle;I)V

    .line 52
    const/4 v6, 0x1

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 54
    return-object v2
.end method

.method private kd()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusSim;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusSim;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 31
    const-class v2, Lcom/android/settings/msim/SimFragment;

    .line 32
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/fy;->J(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/msim/StatusSim;->finish()V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    const v4, 0x7f0c1048

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v4, v5, v0}, Lcom/android/settings/msim/StatusSim;->a(Ljava/lang/Class;III)Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 39
    const v5, 0x7f0c1049

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/settings/msim/StatusSim;->a(Ljava/lang/Class;III)Landroid/app/ActionBar$Tab;

    .line 40
    invoke-virtual {v1, v4}, Lmiui/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/android/settings/msim/StatusSim;->kd()V

    .line 25
    return-void
.end method
