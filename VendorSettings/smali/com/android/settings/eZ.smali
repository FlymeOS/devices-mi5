.class Lcom/android/vendorsettings/eZ;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic sk:Lcom/android/vendorsettings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

.field final synthetic sl:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/vendorsettings/eZ;->sk:Lcom/android/vendorsettings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/eZ;->sl:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 529
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/eZ;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/eZ;->sl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/vendorsettings/eZ;->sl:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    .line 535
    :goto_0
    return v0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    const/4 v0, 0x0

    goto :goto_0
.end method
