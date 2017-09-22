.class public Lcom/android/vendorsettings/gc;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# direct methods
.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v0

    return v0
.end method
