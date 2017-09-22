.class public Lcom/android/settings/MiuiSecurityTrustedCredentials;
.super Lcom/android/settings/BaseFragment;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 415
    return-void
.end method

.method private a(Lmiui/app/ActionBar;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;I)V
    .locals 7

    .prologue
    .line 177
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v0, "tab_tag"

    invoke-static {p2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->b(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 181
    invoke-static {p2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    const/4 v6, 0x1

    move-object v0, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 182
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-object v4

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 168
    invoke-virtual {v0, p0}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 169
    sget-object v1, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->sJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->a(Lmiui/app/ActionBar;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;I)V

    .line 170
    sget-object v1, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->sK:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->a(Lmiui/app/ActionBar;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;I)V

    .line 171
    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v2, "com.android.settings.TrustedCredentialsSettings"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityTrustedCredentials;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 145
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
