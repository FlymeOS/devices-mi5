.class public Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1963
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1967
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V

    .line 1968
    return-void
.end method

.method public static a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    .locals 3

    .prologue
    .line 1972
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    :goto_0
    return-void

    .line 1974
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1977
    new-instance v1, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1978
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1979
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1980
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1981
    const-string v2, "appDetails"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1982
    if-eqz p3, :cond_1

    .line 1983
    const-string v1, "appDetails"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1985
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c08ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1987
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 2008
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2013
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2010
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2011
    const/4 v0, 0x1

    goto :goto_0

    .line 2008
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1992
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1993
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary;

    .line 1994
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;)Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 1995
    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->b(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 1996
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2000
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2001
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DataUsageSummary;

    .line 2002
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Lcom/android/vendorsettings/DataUsageSummary$AppItem;)Lcom/android/vendorsettings/DataUsageSummary$AppItem;

    .line 2003
    invoke-static {v0}, Lcom/android/vendorsettings/DataUsageSummary;->b(Lcom/android/vendorsettings/DataUsageSummary;)V

    .line 2004
    return-void
.end method
