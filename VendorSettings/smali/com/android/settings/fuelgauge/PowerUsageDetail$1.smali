.class Lcom/android/settings/fuelgauge/PowerUsageDetail$1;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->afA:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->XI:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    .line 446
    const/4 v0, 0x1

    return v0
.end method
