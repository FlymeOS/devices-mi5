.class public abstract Lcom/android/vendorsettings/RestrictedSettingsFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# instance fields
.field private sR:Landroid/os/UserManager;

.field private yl:Z

.field private ym:Z

.field private yn:Landroid/content/RestrictionsManager;

.field private final yo:Ljava/lang/String;

.field private yp:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/vendorsettings/gY;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gY;-><init>(Lcom/android/vendorsettings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yp:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yo:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/RestrictedSettingsFragment;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/RestrictedSettingsFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/RestrictedSettingsFragment;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    return p1
.end method

.method private hg()V
    .locals 5

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yn:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yn:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    .line 149
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 150
    const-string v2, "android.request.mesg"

    invoke-virtual {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0aba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    const/16 v1, 0x3015

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method protected O(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return v1

    .line 181
    :cond_0
    const-string v2, "restrict_if_overridable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->sR:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    .line 183
    :goto_1
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yn:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 181
    goto :goto_1

    :cond_3
    move v0, v1

    .line 183
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/android/vendorsettings/RestrictedSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hh()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yo:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "restrict_if_overridable"

    iget-object v2, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->sR:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yn:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hi()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hj()Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->hh()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->hi()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    .line 130
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-boolean v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "restrictions"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yn:Landroid/content/RestrictionsManager;

    .line 90
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->sR:Landroid/os/UserManager;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "chsc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    .line 94
    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    .line 97
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->hg()V

    .line 119
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->ym:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/android/vendorsettings/RestrictedSettingsFragment;->yl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    :cond_0
    return-void
.end method
