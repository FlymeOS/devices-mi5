.class Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# instance fields
.field final synthetic afE:Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;->afE:Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 440
    return-void

    .line 421
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;

    .line 422
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;->afE:Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;

    .line 425
    if-eqz v1, :cond_0

    .line 426
    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->acI:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 427
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 428
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;->afE:Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;

    iget-object v2, v2, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, v0, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;->afE:Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
