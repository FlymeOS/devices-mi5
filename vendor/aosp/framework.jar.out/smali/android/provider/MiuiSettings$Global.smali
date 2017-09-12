.class public Landroid/provider/MiuiSettings$Global;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final CAN_NAV_BAR_HIDE:Ljava/lang/String; = "can_nav_bar_hide"

.field public static final HIDE_NAV_BAR:Ljava/lang/String; = "hide_nav_bar"

.field public static final OPEN_CROSS_USER_NOTIFICATION:Ljava/lang/String; = "open_cross_user_notification"

.field public static final OPEN_PRIVACY_CONTACT_IN_SECOND_SPACE:Ljava/lang/String; = "open_privacy_contact_in_second_space"

.field public static final OPEN_SECOND_SPACE_STATUS_ICON:Ljava/lang/String; = "open_second_space_status_icon"

.field public static final OPEN_SWITCH_USER_NOTIFICATION:Ljava/lang/String; = "open_switch_user_notification"

.field public static final SHOW_ASSISTANT_BUTTON:Ljava/lang/String; = "show_assistant_button"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeOpenCrossUserNotification(Landroid/content/ContentResolver;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isOpen"    # Z

    .prologue
    .line 2688
    const-string/jumbo v0, "open_cross_user_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static changeOpenSecondSpaceStatusIcon(Landroid/content/ContentResolver;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isOpen"    # Z

    .prologue
    .line 2702
    const-string/jumbo v0, "open_second_space_status_icon"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static changeOpenSwitchUserNotification(Landroid/content/ContentResolver;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isOpen"    # Z

    .prologue
    .line 2674
    const-string/jumbo v0, "open_switch_user_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static changePrivacyContactMode(Landroid/content/ContentResolver;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isOpen"    # Z

    .prologue
    .line 2660
    const-string/jumbo v0, "open_privacy_contact_in_second_space"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2716
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOpenCrossUserNotification(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 2681
    const-string/jumbo v1, "open_cross_user_notification"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenSecondSpaceStatusIcon(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 2695
    const-string/jumbo v1, "open_second_space_status_icon"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenSwitchUserNotification(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 2667
    const-string/jumbo v1, "open_switch_user_notification"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenedPrivacyContactMode(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 2653
    const-string/jumbo v0, "open_privacy_contact_in_second_space"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2709
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
