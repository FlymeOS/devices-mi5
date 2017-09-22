.class Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetails;Lcom/android/vendorsettings/applications/InstalledAppDetails$1;)V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 890
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->b(Lcom/android/vendorsettings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 894
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->b(Lcom/android/vendorsettings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v3, v3, Lcom/android/vendorsettings/applications/InstalledAppDetails;->sR:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 896
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->b(Lcom/android/vendorsettings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v3

    .line 897
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 898
    :goto_0
    if-ge v2, v4, :cond_0

    .line 899
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    .line 900
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/vendorsettings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_1

    .line 901
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-static {v2, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->a(Lcom/android/vendorsettings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;

    .line 905
    :cond_0
    return-object v1

    .line 898
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 890
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$BatteryUpdater;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->jF()Z

    goto :goto_0
.end method
