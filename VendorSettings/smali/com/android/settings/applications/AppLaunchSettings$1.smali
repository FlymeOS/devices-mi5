.class Lcom/android/settings/applications/AppLaunchSettings$1;
.super Ljava/lang/Object;
.source "AppLaunchSettings.java"

# interfaces
.implements Lcom/android/settings/cO;


# instance fields
.field final synthetic Fu:Lcom/android/settings/applications/AppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->Fu:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->Fu:Lcom/android/settings/applications/AppLaunchSettings;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppLaunchSettings;->a(Lcom/android/settings/applications/AppLaunchSettings;I)Z

    move-result v0

    return v0
.end method
