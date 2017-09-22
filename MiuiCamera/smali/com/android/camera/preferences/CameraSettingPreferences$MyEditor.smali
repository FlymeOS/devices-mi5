.class Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;
.super Ljava/lang/Object;
.source "CameraSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/preferences/CameraSettingPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field private mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->this$0:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    # getter for: Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$000(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 179
    # getter for: Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$100(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    .line 180
    # getter for: Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$200(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 181
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 203
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 204
    return-object p0
.end method

.method public commit()Z
    .locals 4

    .prologue
    .line 185
    iget-object v3, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 186
    .local v0, "result1":Z
    iget-object v3, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 187
    .local v1, "result2":Z
    iget-object v3, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 188
    .local v2, "result3":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 265
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 272
    :goto_0
    return-object p0

    .line 267
    :cond_0
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 253
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 260
    :goto_0
    return-object p0

    .line 255
    :cond_0
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 229
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 236
    :goto_0
    return-object p0

    .line 231
    :cond_0
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 241
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    :goto_0
    return-object p0

    .line 243
    :cond_0
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    :goto_0
    return-object p0

    .line 219
    :cond_0
    # invokes: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    return-object p0
.end method
