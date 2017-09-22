.class Lcom/android/vendorsettings/notification/MiuiZenModeSettings$3;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aje:Lcom/android/vendorsettings/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$3;->aje:Lcom/android/vendorsettings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$3;->aje:Lcom/android/vendorsettings/notification/MiuiZenModeSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->a(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/dndmode/VipCallSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$3;->aje:Lcom/android/vendorsettings/notification/MiuiZenModeSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->a(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method
