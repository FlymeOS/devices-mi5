.class public Lcom/android/settings/accounts/MiuiAddAccountSettings;
.super Lcom/android/settings/MiuiSettings;
.source "MiuiAddAccountSettings.java"


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/MiuiAddAccountSettings;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jq()V

    return-void
.end method

.method private jl()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    const-string v2, "account_setup_wizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    :cond_0
    return v0
.end method

.method private jp()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accounts.AddAccountSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "account_setup_wizard"

    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jl()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method

.method private jq()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->finish()V

    .line 128
    return-void
.end method


# virtual methods
.method protected c(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->setContentView(I)V

    .line 34
    new-instance v0, Lcom/android/settings/fq;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->fT()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/fq;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const v0, 0x7f13000e

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    new-instance v1, Lcom/android/settings/accounts/MiuiAddAccountSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings$1;-><init>(Lcom/android/settings/accounts/MiuiAddAccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/MiuiSettings;->k(Ljava/util/List;)V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 76
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v2

    .line 77
    const v2, 0x7f130388

    if-ne v0, v2, :cond_1

    .line 78
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    :cond_0
    return-void

    .line 73
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 107
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 108
    array-length v0, v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jp()V

    goto :goto_0

    .line 111
    :cond_0
    const v0, 0x7f13000d

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jq()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/accounts/MiuiAddAccountSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 62
    const v0, 0x7f08000b

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->k(Ljava/util/List;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->invalidateHeaders()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/MiuiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jp()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/MiuiAddAccountSettings;->mCreated:Z

    .line 29
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    .line 88
    const v1, 0x7f130389

    if-ne v0, v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->jp()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
