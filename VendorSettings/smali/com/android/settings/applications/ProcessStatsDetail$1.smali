.class Lcom/android/vendorsettings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Lcom/android/vendorsettings/an;


# instance fields
.field final synthetic LX:Landroid/content/ComponentName;

.field final synthetic LY:Lcom/android/vendorsettings/applications/ProcessStatsDetail;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$1;->LY:Lcom/android/vendorsettings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$1;->LX:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/am;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$1;->LY:Lcom/android/vendorsettings/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$1;->LX:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$1;->LX:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/applications/ProcessStatsDetail;->a(Lcom/android/vendorsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
