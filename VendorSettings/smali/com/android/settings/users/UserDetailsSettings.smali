.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private auf:Landroid/preference/SwitchPreference;

.field private aug:Landroid/preference/Preference;

.field private auh:Landroid/content/pm/UserInfo;

.field private aui:Z

.field private auj:Landroid/os/Bundle;

.field private sR:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method bj(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->auf:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    iget-boolean v2, p0, Lcom/android/settings/users/UserDetailsSettings;->aui:Z

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->auj:Landroid/os/Bundle;

    const-string v3, "no_outgoing_calls"

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->auj:Landroid/os/Bundle;

    const-string v2, "no_sms"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->auj:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 148
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    new-instance v2, Landroid/os/UserHandle;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 151
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->auj:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v3, v0, v2}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 156
    :cond_2
    new-instance v3, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->auh:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    const-string v5, "no_outgoing_calls"

    if-nez p1, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    const-string v4, "no_sms"

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v2, v4, v1, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 161
    :cond_3
    return-void

    :cond_4
    move v2, v0

    .line 157
    goto :goto_1

    :cond_5
    move v1, v0

    .line 159
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    .line 85
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 86
    const-string v0, "enable_calling"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->auf:Landroid/preference/SwitchPreference;

    .line 87
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->aug:Landroid/preference/Preference;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "guest_user"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->aui:Z

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->aui:Z

    if-nez v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    if-ne v0, v4, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Arguments to this fragment must contain the user id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->auh:Landroid/content/pm/UserInfo;

    .line 98
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->auf:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    const-string v5, "no_outgoing_calls"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->aug:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    const-string v1, "no_remove_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->U(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->auf:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    return-void

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->U(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->auf:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c097e

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->auj:Landroid/os/Bundle;

    .line 107
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->auf:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->auj:Landroid/os/Bundle;

    const-string v4, "no_outgoing_calls"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 167
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dialogId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->auh:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/users/UserDialogs;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v0, v1}, Lcom/android/settings/users/UserDialogs;->b(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v0, v1}, Lcom/android/settings/users/UserDialogs;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->aui:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    move v0, v1

    .line 135
    :goto_1
    return v0

    .line 131
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->bj(Z)V

    .line 135
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 118
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->aug:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the owner can remove a user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    .line 125
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeUser()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->sR:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->auh:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->hU()V

    .line 196
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x62

    return v0
.end method
