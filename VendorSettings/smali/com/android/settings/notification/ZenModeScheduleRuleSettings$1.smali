.class Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic alA:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$1;->alA:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings$1;->alA:Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings;->a(Lcom/android/vendorsettings/notification/ZenModeScheduleRuleSettings;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
