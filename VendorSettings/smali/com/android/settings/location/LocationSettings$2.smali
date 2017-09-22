.class Lcom/android/vendorsettings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ahh:Lcom/android/vendorsettings/location/LocationSettings;

.field final synthetic ahi:Lcom/android/vendorsettings/hn;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/location/LocationSettings;Lcom/android/vendorsettings/hn;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/vendorsettings/location/LocationSettings$2;->ahh:Lcom/android/vendorsettings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/location/LocationSettings$2;->ahi:Lcom/android/vendorsettings/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/vendorsettings/location/LocationSettings$2;->ahi:Lcom/android/vendorsettings/hn;

    const-class v1, Lcom/android/vendorsettings/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0517

    iget-object v5, p0, Lcom/android/vendorsettings/location/LocationSettings$2;->ahh:Lcom/android/vendorsettings/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method
