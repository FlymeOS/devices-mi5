.class public final Landroid/provider/MiuiSettings$Ad;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ad"
.end annotation


# static fields
.field private static final AAID:Ljava/lang/String; = "ad_aaid"

.field public static final ACTION_AAID_RESET:Ljava/lang/String; = "miui.intent.action.ad.AAID_RESET"

.field public static final EXTRA_KEY_NEW_AAID:Ljava/lang/String; = "new_aaid"

.field public static final EXTRA_KEY_OLD_AAID:Ljava/lang/String; = "old_aaid"

.field private static final PERSONALIZED_AD_ENABLED:Ljava/lang/String; = "personalized_ad_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAaid(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4602
    const-string v0, "ad_aaid"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPersonalizedAdEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 4593
    const-string/jumbo v1, "personalized_ad_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetAaid(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4606
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Ad;->getAaid(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 4607
    .local v2, "oldAaid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4608
    const-string v2, ""

    .line 4610
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4611
    .local v1, "newAaid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ad_aaid"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4612
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.ad.AAID_RESET"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4613
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "old_aaid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4614
    const-string/jumbo v3, "new_aaid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4615
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    return-void
.end method

.method public static setPersonalizedAdEnable(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4598
    const-string/jumbo v1, "personalized_ad_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4599
    return-void

    .line 4598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
