.class final Lcom/android/vendorsettings/MiuiSettings$2;
.super Ljava/util/HashMap;
.source "MiuiSettings.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f020114

    .line 175
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v0, "com.android.settings.category.wireless"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSettings$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "com.android.settings.category.device"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSettings$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "com.android.settings.category.personal"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSettings$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "com.android.settings.category.system"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/MiuiSettings$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method
