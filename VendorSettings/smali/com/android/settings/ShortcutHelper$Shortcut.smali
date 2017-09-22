.class public final enum Lcom/android/vendorsettings/ShortcutHelper$Shortcut;
.super Ljava/lang/Enum;
.source "SettingsApplication.java"


# static fields
.field public static final enum Ak:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

.field public static final enum Al:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

.field public static final enum Am:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

.field public static final enum An:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

.field public static final enum Ao:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

.field public static final enum Ap:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

.field private static final synthetic Aq:[Lcom/android/vendorsettings/ShortcutHelper$Shortcut;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    const-string v1, "OPTIMIZE_CENTER"

    invoke-direct {v0, v1, v3}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ak:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    const-string v1, "POWER_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Al:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    const-string v1, "VIRUS_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Am:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    const-string v1, "PERM_CENTER"

    invoke-direct {v0, v1, v6}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->An:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    const-string v1, "NETWORK_ASSISTANT"

    invoke-direct {v0, v1, v7}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ao:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    const-string v1, "ANTISPAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ap:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    .line 175
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    sget-object v1, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ak:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Al:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Am:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->An:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ao:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ap:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Aq:[Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vendorsettings/ShortcutHelper$Shortcut;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    return-object v0
.end method

.method public static values()[Lcom/android/vendorsettings/ShortcutHelper$Shortcut;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Aq:[Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v0}, [Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    return-object v0
.end method
