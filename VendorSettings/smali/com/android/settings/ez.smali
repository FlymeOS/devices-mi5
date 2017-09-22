.class Lcom/android/vendorsettings/ez;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"


# instance fields
.field displayName:Ljava/lang/String;

.field final synthetic rm:Lcom/android/vendorsettings/MiuiLocaleSettings;

.field rn:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/vendorsettings/ez;->rm:Lcom/android/vendorsettings/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/MiuiLocaleSettings;Lcom/android/vendorsettings/ev;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ez;-><init>(Lcom/android/vendorsettings/MiuiLocaleSettings;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/ez;->displayName:Ljava/lang/String;

    return-object v0
.end method
