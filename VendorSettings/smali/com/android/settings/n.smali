.class public Lcom/android/settings/n;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final M:Landroid/preference/CheckBoxPreference;

.field private N:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings/o;

    invoke-direct {v0, p0}, Lcom/android/settings/o;-><init>(Lcom/android/settings/n;)V

    iput-object v0, p0, Lcom/android/settings/n;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/android/settings/p;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/p;-><init>(Lcom/android/settings/n;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/n;->N:Landroid/database/ContentObserver;

    .line 69
    iput-object p1, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/settings/n;->M:Landroid/preference/CheckBoxPreference;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 74
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/n;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/n;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 75
    iget-object v0, p0, Lcom/android/settings/n;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/android/settings/n;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/n;->u()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/n;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 112
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/n;->M:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/b/h;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 0

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lcom/android/settings/n;->b(Z)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/n;->u()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 130
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 135
    iget-object v0, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    const/16 v1, 0xb1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 136
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/n;->b(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/n;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/n;->M:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/n;->N:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/n;->M:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/b/h;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/n;->L:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/n;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/n;->N:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    return-void
.end method
