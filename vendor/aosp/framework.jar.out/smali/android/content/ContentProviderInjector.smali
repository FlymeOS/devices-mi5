.class public Landroid/content/ContentProviderInjector;
.super Ljava/lang/Object;
.source "ContentProviderInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMmsProviderClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "com.android.providers.telephony.MmsProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
