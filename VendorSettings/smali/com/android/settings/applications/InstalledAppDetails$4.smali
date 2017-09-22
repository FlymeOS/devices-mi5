.class Lcom/android/vendorsettings/applications/InstalledAppDetails$4;
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
    .line 625
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$4;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$4;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$4;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->a(Lcom/android/vendorsettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V

    .line 630
    return-void
.end method
