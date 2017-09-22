.class public Lcom/android/vendorsettings/applications/ManageApplicationsFragment;
.super Lcom/android/vendorsettings/BaseFragment;
.source "ManageApplicationsFragment.java"


# instance fields
.field private HF:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

.field private Km:Lcom/android/vendorsettings/applications/ApplicationsContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->setThemeRes(I)V

    .line 21
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "filter_app_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v3, Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->Km:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    .line 28
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->Km:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->kc()Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    .line 30
    iget v4, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HT:I

    if-ne v4, v2, :cond_0

    .line 31
    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->HF:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->HF:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;->HF:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 40
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
