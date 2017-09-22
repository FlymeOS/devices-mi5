.class public Lcom/android/settings/dashboard/c;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private UL:Landroid/view/View;

.field private UM:I

.field private UN:Lcom/android/settings/dashboard/DashboardTile;


# virtual methods
.method public aG(Z)V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/settings/dashboard/c;->UL:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method getColumnSpan()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/dashboard/c;->UM:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/dashboard/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/c;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings/iC;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->UK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    if-le v0, v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/dashboard/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    invoke-static {v0, v1}, Lcom/android/settings/gj;->a(Landroid/app/FragmentManager;Lcom/android/settings/dashboard/DashboardTile;)V

    goto :goto_0

    .line 101
    :cond_2
    if-ne v0, v1, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/dashboard/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->UK:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/dashboard/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/c;->UN:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
