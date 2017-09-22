.class Lcom/android/vendorsettings/wifi/au;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/dK;


# instance fields
.field final synthetic aDW:Lcom/android/vendorsettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/au;->aDW:Lcom/android/vendorsettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/au;->aDW:Lcom/android/vendorsettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 805
    const-class v1, Lcom/android/vendorsettings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c051c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 807
    return-void
.end method
