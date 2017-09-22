.class Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$3;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$3;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$3;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    iget-object v0, v0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0xac

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings$3;->akH:Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;->a(Lcom/android/vendorsettings/notification/ZenModeAutomationSettings;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method
