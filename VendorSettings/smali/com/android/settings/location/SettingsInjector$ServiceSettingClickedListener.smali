.class Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private ahA:Lcom/android/vendorsettings/location/InjectedSetting;

.field final synthetic ahB:Lcom/android/vendorsettings/location/SettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/location/SettingsInjector;Lcom/android/vendorsettings/location/InjectedSetting;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;->ahB:Lcom/android/vendorsettings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;->ahA:Lcom/android/vendorsettings/location/InjectedSetting;

    .line 293
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;->ahA:Lcom/android/vendorsettings/location/InjectedSetting;

    iget-object v1, v1, Lcom/android/vendorsettings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;->ahA:Lcom/android/vendorsettings/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/vendorsettings/location/InjectedSetting;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;->ahB:Lcom/android/vendorsettings/location/SettingsInjector;

    invoke-static {v1}, Lcom/android/vendorsettings/location/SettingsInjector;->a(Lcom/android/vendorsettings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/location/SettingsInjector$ServiceSettingClickedListener;->ahA:Lcom/android/vendorsettings/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/vendorsettings/location/InjectedSetting;->BW:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 304
    const/4 v0, 0x1

    return v0
.end method
