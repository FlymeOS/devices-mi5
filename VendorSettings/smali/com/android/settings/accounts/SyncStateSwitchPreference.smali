.class public Lcom/android/settings/accounts/SyncStateSwitchPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private EM:Z

.field private EN:Z

.field private EO:Z

.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mIsPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x0

    const v1, 0x7f0d0024

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EM:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EN:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EO:Z

    .line 57
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 58
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    const v0, 0x7f0d0024

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EM:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EN:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EO:Z

    .line 51
    iput-object v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 52
    iput-object v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public ah(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 109
    return-void
.end method

.method public ai(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EN:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 118
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EO:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 64
    const v0, 0x7f1301de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/AnimatedImageView;

    .line 66
    const v1, 0x7f1301dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 68
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EM:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    .line 69
    :goto_0
    if-eqz v5, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AnimatedImageView;->setVisibility(I)V

    .line 70
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EM:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AnimatedImageView;->setAnimating(Z)V

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EN:Z

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    move v0, v4

    .line 73
    :goto_2
    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EO:Z

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c085b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_4
    return-void

    :cond_1
    move v5, v2

    .line 68
    goto :goto_0

    :cond_2
    move v1, v3

    .line 69
    goto :goto_1

    :cond_3
    move v0, v2

    .line 72
    goto :goto_2

    :cond_4
    move v0, v3

    .line 73
    goto :goto_3

    .line 89
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EO:Z

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EM:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 100
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->EO:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 126
    return-void
.end method
