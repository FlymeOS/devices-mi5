.class Lcom/android/vendorsettings/applications/InstalledAppDetails$1;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$1;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 589
    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$1;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$1;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v2, v2, Lcom/android/vendorsettings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 592
    return-void
.end method
