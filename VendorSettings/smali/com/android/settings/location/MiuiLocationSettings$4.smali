.class Lcom/android/vendorsettings/location/MiuiLocationSettings$4;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ahu:Lcom/android/vendorsettings/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/location/MiuiLocationSettings;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/vendorsettings/location/MiuiLocationSettings$4;->ahu:Lcom/android/vendorsettings/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/location/MiuiLocationSettings$4;->ahu:Lcom/android/vendorsettings/location/MiuiLocationSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/location/MiuiLocationSettings;->a(Lcom/android/vendorsettings/location/MiuiLocationSettings;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/fy;->a(Landroid/location/LocationManager;I)V

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/location/MiuiLocationSettings$4;->ahu:Lcom/android/vendorsettings/location/MiuiLocationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/location/MiuiLocationSettings;->b(Lcom/android/vendorsettings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    return-void
.end method
