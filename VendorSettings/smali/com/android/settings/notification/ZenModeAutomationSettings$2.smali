.class Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

.field final synthetic akI:Z

.field final synthetic akJ:Z

.field final synthetic akK:Landroid/service/notification/ZenModeConfig$ZenRule;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;ZZLjava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    iput-boolean p2, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akI:Z

    iput-boolean p3, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akJ:Z

    iput-object p4, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->val$id:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akK:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akI:Z

    if-eqz v0, :cond_0

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akK:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$2;->akJ:Z

    if-eqz v0, :cond_1

    const-string v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v0, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    goto :goto_0
.end method
