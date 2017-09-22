.class public Lcom/android/vendorsettings/wifi/aw;
.super Lcom/android/vendorsettings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

.field private aDY:Landroid/view/View;

.field private aDZ:Landroid/widget/TextView;

.field private aEa:Landroid/view/View;

.field private aEb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WifiSettings;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/wifi/aw;->aEb:Z

    return-void
.end method

.method private yx()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aEa:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->je:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aEa:Landroid/view/View;

    const v2, 0x7f1302b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    return-void

    .line 201
    :cond_1
    const v1, 0x7f0c042b

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/aw;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public af(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bL(Z)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    if-eqz v0, :cond_0

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->AY()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->AZ()V

    goto :goto_0
.end method

.method protected bM(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/android/vendorsettings/wifi/aw;->aEb:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->hasListView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDZ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 156
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDY:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 157
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aEa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 158
    if-eqz p1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDZ:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 164
    :goto_0
    iput-boolean p1, p0, Lcom/android/vendorsettings/wifi/aw;->aEb:Z

    .line 166
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDY:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 162
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aEa:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public dC(I)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/vendorsettings/wifi/WifiSettings;->dC(I)V

    .line 105
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/aw;->yx()V

    .line 106
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected i(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/WifiSetupActivity;

    .line 134
    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WifiSetupActivity;->yz()V

    .line 135
    invoke-super {p0, p1}, Lcom/android/vendorsettings/wifi/WifiSettings;->i(Landroid/net/wifi/WifiConfiguration;)V

    .line 136
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/vendorsettings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/aw;->yx()V

    .line 94
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/vendorsettings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/android/vendorsettings/hH;->a(Landroid/app/Dialog;)V

    .line 128
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    const v0, 0x7f040149

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardListLayout;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 62
    const v1, 0x7f040147

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDY:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDY:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 64
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aDY:Landroid/view/View;

    new-instance v2, Lcom/android/vendorsettings/wifi/ax;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wifi/ax;-><init>(Lcom/android/vendorsettings/wifi/aw;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f04014a

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aEa:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aw;->aEa:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/WifiSetupActivity;

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/WifiSetupActivity;->a(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDX:Lcom/android/setupwizardlib/SetupWizardListLayout;

    return-object v0
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public xA()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/vendorsettings/wifi/WifiSettings;->xA()V

    .line 99
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/aw;->bM(Z)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected yt()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 148
    const v1, 0x7f040148

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/aw;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDZ:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aw;->aDZ:Landroid/widget/TextView;

    return-object v0
.end method
