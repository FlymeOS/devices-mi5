.class public Lcom/android/settings/MiuiDisplaySettings;
.super Lcom/android/settings/DisplaySettings;
.source "MiuiDisplaySettings.java"


# instance fields
.field private qA:Landroid/preference/CheckBoxPreference;

.field private qB:Lcom/android/settings/display/ResolutionListPreference;

.field private qC:Landroid/database/ContentObserver;

.field private qD:Lcom/android/settings/ag;

.field private qE:Lmiui/preference/ValuePreference;

.field private qF:Lcom/android/settings/ag;

.field private qG:Lmiui/preference/ValuePreference;

.field private qx:Landroid/preference/CheckBoxPreference;

.field private qy:Lcom/android/settings/fy;

.field private qz:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;-><init>()V

    return-void
.end method

.method private E(Z)V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 247
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->eZ()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->E(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qG:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method private eZ()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "screen_paper_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c0efb

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 206
    :cond_0
    return-void

    .line 204
    :cond_1
    const v1, 0x7f0c0efc

    goto :goto_0
.end method

.method private fa()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qD:Lcom/android/settings/ag;

    invoke-virtual {v0}, Lcom/android/settings/ag;->af()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qF:Lcom/android/settings/ag;

    invoke-virtual {v0}, Lcom/android/settings/ag;->af()V

    .line 211
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_effect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 61
    const-string v1, "support_screen_effect"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    const v1, 0x7f0c0ef1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 63
    const-string v1, "support_screen_optimize"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const v1, 0x7f0c0ef4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 70
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qy:Lcom/android/settings/fy;

    .line 71
    const-string v0, "touch_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 73
    const-string v1, "touch_sensitive"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v1, "support_touch_sensitive"

    invoke-static {v1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 75
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    .line 81
    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_1
    const-string v0, "line_breaking"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qz:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v0, "gesture_wakeup"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v0, "support_gesture_wakeup"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :goto_2
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_2
    const-string v0, "screen_resolution"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ResolutionListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qB:Lcom/android/settings/display/ResolutionListPreference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qB:Lcom/android/settings/display/ResolutionListPreference;

    if-eqz v0, :cond_3

    const-string v0, "support_resolution_switch"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qB:Lcom/android/settings/display/ResolutionListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qB:Lcom/android/settings/display/ResolutionListPreference;

    .line 111
    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_4

    .line 112
    const-string v0, "font_settings_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 113
    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_4
    const-string v0, "support_screen_effect"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 119
    const-string v0, "screen_effect"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_5
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 126
    const-string v0, "screen_paper_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_6
    :goto_3
    new-instance v0, Lcom/android/settings/display/k;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/display/k;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qD:Lcom/android/settings/ag;

    .line 144
    const-string v0, "font_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    .line 145
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_7

    .line 146
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qD:Lcom/android/settings/ag;

    new-instance v1, Lcom/android/settings/eo;

    invoke-direct {v1, p0}, Lcom/android/settings/eo;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ag;->a(Lcom/android/settings/ah;)V

    .line 155
    :cond_7
    new-instance v0, Lcom/android/settings/display/x;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/display/x;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qF:Lcom/android/settings/ag;

    .line 156
    const-string v0, "page_layout_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qG:Lmiui/preference/ValuePreference;

    .line 157
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qG:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qG:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qF:Lcom/android/settings/ag;

    new-instance v1, Lcom/android/settings/ep;

    invoke-direct {v1, p0}, Lcom/android/settings/ep;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ag;->a(Lcom/android/settings/ah;)V

    .line 166
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    const-string v0, "font_settings_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 168
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qG:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qG:Lmiui/preference/ValuePreference;

    .line 170
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qF:Lcom/android/settings/ag;

    invoke-virtual {v0, v5}, Lcom/android/settings/ag;->a(Lcom/android/settings/ah;)V

    .line 174
    :cond_9
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "font_settings_cat"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 176
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    if-eqz v1, :cond_a

    .line 177
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    iput-object v5, p0, Lcom/android/settings/MiuiDisplaySettings;->qE:Lmiui/preference/ValuePreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qD:Lcom/android/settings/ag;

    invoke-virtual {v0, v5}, Lcom/android/settings/ag;->a(Lcom/android/settings/ah;)V

    .line 182
    :cond_a
    return-void

    .line 67
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 78
    :cond_c
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->qy:Lcom/android/settings/fy;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fy;->K(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 93
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    invoke-static {v0, v1, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 96
    :cond_e
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 131
    :cond_f
    new-instance v0, Lcom/android/settings/en;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/en;-><init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qC:Landroid/database/ContentObserver;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->qC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 251
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0d75

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d76

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d77

    new-instance v2, Lcom/android/settings/eq;

    invoke-direct {v2, p0}, Lcom/android/settings/eq;-><init>(Lcom/android/settings/MiuiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d78

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qC:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qC:Landroid/database/ContentObserver;

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onDestroy()V

    .line 198
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings;->qy:Lcom/android/settings/fy;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiDisplaySettings;->qx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fy;->e(Landroid/content/Context;Z)V

    .line 218
    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->E(Z)V

    .line 240
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qz:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 222
    const-string v1, "persist.sys.line_breaking"

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 225
    const-string v1, "gesture_wakeup"

    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "on"

    :goto_2
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dj;->z(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    iget-object v2, p0, Lcom/android/settings/MiuiDisplaySettings;->qA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 225
    :cond_4
    const-string v0, "off"

    goto :goto_2

    .line 228
    :cond_5
    const-string v0, "font_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings/DisplaySettings;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->eZ()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/MiuiDisplaySettings;->fa()V

    .line 189
    return-void
.end method
