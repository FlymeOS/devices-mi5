.class abstract Lcom/android/vendorsettings/accounts/AccountPreferenceBase;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field protected BW:Landroid/os/UserHandle;

.field private DH:Ljava/lang/Object;

.field private DI:Ljava/text/DateFormat;

.field private DJ:Ljava/text/DateFormat;

.field private DK:Landroid/content/SyncStatusObserver;

.field private aN:Landroid/os/UserManager;

.field private final mHandler:Landroid/os/Handler;

.field protected te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/vendorsettings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DK:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->ah(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    :try_start_1
    iget v2, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->BW:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 156
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 157
    const v4, 0x7f0d005a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 158
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 159
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 161
    sget v2, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->setTheme(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    iget v3, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v2, v4, v3, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 166
    :goto_1
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 168
    :goto_2
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :catch_2
    move-exception v2

    goto :goto_2

    .line 165
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method protected a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DI:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DJ:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public aa(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->aa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected ab(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected ac(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected iZ()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected ja()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public jb()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->al(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->iZ()V

    .line 177
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DI:Ljava/text/DateFormat;

    .line 101
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DJ:Ljava/text/DateFormat;

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->aN:Landroid/os/UserManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->aN:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/vendorsettings/iC;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->BW:Landroid/os/UserHandle;

    .line 69
    new-instance v1, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->BW:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->aN:Landroid/os/UserManager;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DH:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 107
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DK:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->DH:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/android/vendorsettings/accounts/AccountPreferenceBase;->ja()V

    .line 113
    return-void
.end method
