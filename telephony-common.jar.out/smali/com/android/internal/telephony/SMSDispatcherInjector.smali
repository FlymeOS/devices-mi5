.class public Lcom/android/internal/telephony/SMSDispatcherInjector;
.super Ljava/lang/Object;
.source "SMSDispatcherInjector.java"


# static fields
.field public static final CALLING_PACKAGE_NAME_KEY:Ljava/lang/String; = "calling_package_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCallerAppInfo(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "smsDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "appInfoByUid"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "calling_package_name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    .local v0, "callingPkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 15
    const-string v1, "calling_package_name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 21
    .end local p2    # "appInfoByUid":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object p2

    .line 18
    .restart local p2    # "appInfoByUid":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
