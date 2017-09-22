.class Lcom/android/vendorsettings/applications/InstalledAppDetails$3;
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
    .line 613
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$3;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$3;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetails$3;->IQ:Lcom/android/vendorsettings/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->a(Lcom/android/vendorsettings/applications/InstalledAppDetails;Ljava/lang/String;)V

    .line 617
    return-void
.end method
