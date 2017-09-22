.class Lcom/android/vendorsettings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private BW:Landroid/os/UserHandle;

.field final synthetic ahy:Lcom/android/vendorsettings/location/RecentLocationApps;

.field private mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/vendorsettings/location/RecentLocationApps$PackageEntryClickedListener;->ahy:Lcom/android/vendorsettings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/vendorsettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/android/vendorsettings/location/RecentLocationApps$PackageEntryClickedListener;->BW:Landroid/os/UserHandle;

    .line 74
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/vendorsettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/location/RecentLocationApps$PackageEntryClickedListener;->ahy:Lcom/android/vendorsettings/location/RecentLocationApps;

    invoke-static {v0}, Lcom/android/vendorsettings/location/RecentLocationApps;->a(Lcom/android/vendorsettings/location/RecentLocationApps;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0578

    const/4 v6, 0x0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
