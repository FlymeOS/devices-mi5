.class public Lmiui/securityspace/XSpaceResolverActivityHelper;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    const-string v0, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 29
    :cond_1
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {v0, p0, p1, p2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;-><init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V

    invoke-virtual {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V

    .line 30
    const/4 v0, 0x1

    goto :goto_0
.end method
