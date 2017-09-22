.class Lcom/android/settings/fuelgauge/BatterySaverSettings$1;
.super Lcom/android/settings/notification/SettingPref;
.source "BatterySaverSettings.java"


# instance fields
.field final synthetic aeU:Lcom/android/settings/fuelgauge/BatterySaverSettings;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;->aeU:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    if-lez p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 96
    const v0, 0x7f0c0769

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/android/settings/iC;->ar(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0768

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
