.class public Lcom/android/settings/NotificationFilterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationFilterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field private mUserId:I

.field private vk:Landroid/preference/CheckBoxPreference;

.field private vl:Landroid/preference/CheckBoxPreference;

.field private vm:Landroid/preference/CheckBoxPreference;

.field private vn:Landroid/preference/CheckBoxPreference;

.field private vo:Landroid/preference/CheckBoxPreference;

.field private vp:Landroid/preference/CheckBoxPreference;

.field private vq:Landroid/preference/CheckBoxPreference;

.field private vr:Landroid/preference/CheckBoxPreference;

.field private vs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NotificationFilterSettings;->mUserId:I

    return-void
.end method

.method private af()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-static {v0, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-static {v0, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->vm:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_keyguard"

    invoke-static {v0, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->vo:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_message"

    invoke-static {v0, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_sound"

    invoke-static {v0, v2, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_vibrate"

    invoke-static {v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->vp:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->vq:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vr:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_led"

    invoke-static {v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/NotificationFilterSettings;->vs:Z

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vl:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-static {v1, v2}, Lcom/android/settings/aI;->b(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vl:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vm:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vq:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 205
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 172
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 177
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 186
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 189
    goto/16 :goto_4

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/settings/NotificationFilterSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    :cond_0
    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v3, "packageName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    .line 66
    const-string v3, "userId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const-string v3, "userId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NotificationFilterSettings;->mUserId:I

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, ":android:show_fragment_args"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_8

    .line 72
    const-string v0, "appName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "packageName"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    .line 74
    const-string v1, "userId"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "userId"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/NotificationFilterSettings;->mUserId:I

    .line 80
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 81
    const/4 v3, 0x0

    .line 83
    const/4 v4, -0x1

    iget v5, p0, Lcom/android/settings/NotificationFilterSettings;->mUserId:I

    if-eq v4, v5, :cond_5

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/NotificationFilterSettings;->mUserId:I

    invoke-interface {v1, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :try_start_1
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 98
    :goto_1
    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_4

    .line 99
    :cond_3
    const-string v3, "NotificationFilterSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packagename ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->finish()V

    .line 103
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v1, v3, :cond_6

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/NotificationFilterSettings;->vs:Z

    .line 105
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/android/settings/NotificationFilterSettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    const-string v0, "enable_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    .line 109
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vl:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/NotificationFilterSettings;->vs:Z

    if-nez v0, :cond_7

    .line 113
    const-string v0, "main_container"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->vl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    :goto_3
    const-string v0, "show_floating_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v0, "show_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vm:Landroid/preference/CheckBoxPreference;

    .line 123
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v0, "show_home_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vo:Landroid/preference/CheckBoxPreference;

    .line 126
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    const-string v0, "enable_notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vp:Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v0, "enable_notification_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vq:Landroid/preference/CheckBoxPreference;

    .line 132
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    const-string v0, "enable_notification_led"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vr:Landroid/preference/CheckBoxPreference;

    .line 135
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    return-void

    .line 87
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    .line 88
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 92
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 93
    :try_start_3
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 94
    :catch_1
    move-exception v3

    .line 95
    :goto_5
    const-string v3, "NotificationFilterSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move v1, v2

    .line 103
    goto/16 :goto_2

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->vl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 94
    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_5

    .line 87
    :catch_3
    move-exception v3

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 210
    check-cast p2, Ljava/lang/Boolean;

    .line 211
    const-string v1, "show_floating_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 235
    :cond_0
    :goto_0
    const-string v1, "enable_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "show_home_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v2, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    const-string v3, "enable_notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    const-string v0, "app_packageName"

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/NotificationFilterSettings;->af()V

    .line 243
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_3
    const-string v1, "show_keyguard_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_keyguard"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 217
    :cond_4
    const-string v1, "enable_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 220
    :cond_5
    const-string v1, "priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/aI;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto/16 :goto_0

    .line 223
    :cond_6
    const-string v1, "show_home_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_message"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 226
    :cond_7
    const-string v1, "enable_notification_sound"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_sound"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 228
    :cond_8
    const-string v1, "enable_notification_vibrate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_vibrate"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 231
    :cond_9
    const-string v1, "enable_notification_led"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_led"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/settings/NotificationFilterSettings;->af()V

    .line 142
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 143
    return-void
.end method
