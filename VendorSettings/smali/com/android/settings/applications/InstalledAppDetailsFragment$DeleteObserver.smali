.class Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;)V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 662
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-static {v0, v1, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;ZZ)V

    .line 663
    return-void
.end method
