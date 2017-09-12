.class public Lmiui/provider/ExtraContacts;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraContacts$ConferenceCalls;,
        Lmiui/provider/ExtraContacts$ConferenceColumns;,
        Lmiui/provider/ExtraContacts$LunarBirthday;,
        Lmiui/provider/ExtraContacts$XiaomiId;,
        Lmiui/provider/ExtraContacts$Characteristic;,
        Lmiui/provider/ExtraContacts$Schools;,
        Lmiui/provider/ExtraContacts$Degree;,
        Lmiui/provider/ExtraContacts$Hobby;,
        Lmiui/provider/ExtraContacts$Interest;,
        Lmiui/provider/ExtraContacts$EmotionStatus;,
        Lmiui/provider/ExtraContacts$AnimalSign;,
        Lmiui/provider/ExtraContacts$Constellation;,
        Lmiui/provider/ExtraContacts$BloodType;,
        Lmiui/provider/ExtraContacts$Gender;,
        Lmiui/provider/ExtraContacts$Preferences;,
        Lmiui/provider/ExtraContacts$USimAccount;,
        Lmiui/provider/ExtraContacts$SimAccount;,
        Lmiui/provider/ExtraContacts$DefaultAccount;,
        Lmiui/provider/ExtraContacts$Insert;,
        Lmiui/provider/ExtraContacts$UI;,
        Lmiui/provider/ExtraContacts$Nickname;,
        Lmiui/provider/ExtraContacts$Phone;,
        Lmiui/provider/ExtraContacts$Groups;,
        Lmiui/provider/ExtraContacts$Intents;,
        Lmiui/provider/ExtraContacts$ProviderStatus;,
        Lmiui/provider/ExtraContacts$RawContacts;,
        Lmiui/provider/ExtraContacts$Contacts;,
        Lmiui/provider/ExtraContacts$Calls;,
        Lmiui/provider/ExtraContacts$AccountSyncState;,
        Lmiui/provider/ExtraContacts$T9Query;,
        Lmiui/provider/ExtraContacts$T9MatchLevel;,
        Lmiui/provider/ExtraContacts$T9LookupType;,
        Lmiui/provider/ExtraContacts$T9LookupColumns;,
        Lmiui/provider/ExtraContacts$SmartDialer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExtraContacts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    return-void
.end method

.method protected static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z

    .prologue
    .line 657
    invoke-static {p0, p1, p2, p3}, Lmiui/provider/CallLog;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
