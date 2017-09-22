.class Lcom/android/settings/notification/MiuiZenModeSettings$2;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aje:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 125
    check-cast p2, Ljava/lang/Boolean;

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->a(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 127
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->b(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 130
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 132
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v1}, Lcom/android/settings/notification/MiuiZenModeSettings;->a(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->a(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->bv(Landroid/content/Context;)V

    .line 138
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$2;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->a(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dndmode/m;->bx(Landroid/content/Context;)V

    goto :goto_0
.end method
