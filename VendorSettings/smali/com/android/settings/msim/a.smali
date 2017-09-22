.class public Lcom/android/vendorsettings/msim/a;
.super Lcom/android/vendorsettings/fy;
.source "MSimUtils.java"


# static fields
.field public static final ahL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    sput v0, Lcom/android/vendorsettings/msim/a;->ahL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/vendorsettings/fy;-><init>()V

    .line 48
    return-void
.end method

.method private bG(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    .line 162
    const/4 v2, 0x5

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public J(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    .line 100
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    return-object v1
.end method

.method public M(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fy;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v2}, Lcom/android/vendorsettings/msim/a;->o(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0, p1, v2}, Lcom/android/vendorsettings/msim/a;->n(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/android/vendorsettings/msim/a;->o(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0, p1, v3}, Lcom/android/vendorsettings/msim/a;->n(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 58
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 59
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 60
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 64
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/vendorsettings/e/a;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 68
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    :cond_2
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :cond_3
    return-void

    .line 72
    :cond_4
    new-instance v1, Lcom/android/vendorsettings/msim/b;

    invoke-direct {v1}, Lcom/android/vendorsettings/msim/b;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 74
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 77
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.IccLockSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v2, v6}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 79
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 80
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    .line 81
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-virtual {v6, v2}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v2

    .line 82
    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v6

    if-nez v6, :cond_6

    .line 86
    :cond_5
    const/4 v2, 0x0

    .line 88
    :cond_6
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 89
    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 89
    :cond_7
    const v1, 0x7f0c0f37

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public n(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 124
    sget v0, Lcom/android/vendorsettings/msim/a;->ahL:I

    if-ne p2, v0, :cond_1

    .line 125
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fy;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const/4 v1, 0x0

    .line 130
    invoke-static {p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getActivateInfo(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object v2

    .line 132
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 133
    const-string v3, "activate_phone"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    .line 144
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/telephony/TelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 142
    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    .line 137
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 142
    goto :goto_1

    .line 138
    :catch_2
    move-exception v0

    .line 139
    :try_start_3
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 142
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    throw v0
.end method

.method public o(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    .line 152
    sget v0, Lcom/android/vendorsettings/msim/a;->ahL:I

    if-ne p2, v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/msim/a;->bG(Landroid/content/Context;)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
