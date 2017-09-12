.class Lcom/android/server/accounts/AccountManagerServiceInjector;
.super Ljava/lang/Object;
.source "AccountManagerServiceInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13
    .local v0, "identityToken":J
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmiui/content/pm/ExtraPackageManager;->isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
