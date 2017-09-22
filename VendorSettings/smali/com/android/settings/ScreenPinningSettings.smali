.class public Lcom/android/settings/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;
.implements Lcom/android/settings/widget/I;


# static fields
.field public static final ig:Lcom/android/settings/search/l;

.field private static final yt:Ljava/lang/CharSequence;


# instance fields
.field private dC:Lcom/android/internal/widget/LockPatternUtils;

.field private me:Lcom/android/settings/widget/SwitchBar;

.field private yu:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->yt:Ljava/lang/CharSequence;

    .line 202
    new-instance v0, Lcom/android/settings/hb;

    invoke-direct {v0}, Lcom/android/settings/hb;-><init>()V

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static Q(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private R(Z)V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->hk()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->T(Z)V

    .line 105
    :cond_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic R(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/settings/ScreenPinningSettings;->Q(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private S(Z)Z
    .locals 3

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->T(Z)V

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private T(Z)V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_exit_locked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/ScreenPinningSettings;Z)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->S(Z)Z

    move-result v0

    return v0
.end method

.method private hk()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->hl()I

    move-result v0

    const v3, 0x7f0c0ac2

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0

    :cond_1
    move v1, v2

    .line 109
    goto :goto_1
.end method

.method private hl()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 153
    sparse-switch v0, :sswitch_data_0

    .line 166
    :cond_0
    const v0, 0x7f0c0ac2

    :goto_0
    return v0

    .line 156
    :sswitch_0
    const v0, 0x7f0c0ac0

    goto :goto_0

    .line 160
    :sswitch_1
    const v0, 0x7f0c0ac1

    goto :goto_0

    .line 162
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const v0, 0x7f0c0abf

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p2}, Lcom/android/settings/ScreenPinningSettings;->R(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->hm()V

    .line 176
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hm()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ScreenPinningSettings;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/android/settings/ScreenPinningSettings;->yt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->yu:Landroid/preference/SwitchPreference;

    .line 188
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->yu:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/ha;

    invoke-direct {v1, p0}, Lcom/android/settings/ha;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->yu:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->hk()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->yu:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->hl()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 197
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 72
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04012b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/hn;->hD()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->me:Lcom/android/settings/widget/SwitchBar;

    .line 80
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/I;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->Q(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 83
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 144
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->S(Z)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->yu:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    :cond_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/I;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 91
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x56

    return v0
.end method
